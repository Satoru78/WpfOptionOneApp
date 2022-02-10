using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfOptionOneApp.Context;
using WpfOptionOneApp.Model;
using WpfOptionOneApp.Views.Pages.AdminPages;

namespace WpfOptionOneApp.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для ManagerViewDataPage.xaml
    /// </summary>
    public partial class ManagerViewDataPage : Page
    {

        public Manager Manager { get; set; }
        public ManagerViewDataPage(Manager manager)
        {
            InitializeComponent();
            Manager = manager;
            this.DataContext = this;
        }

        private void Searchtxb_TextChanged(object sender, TextChangedEventArgs e)
        {
            var list = Data.oe.Manager.Where(item => item.FirstName.Contains(Searchtxb.Text) ||
            item.LastName.Contains(Searchtxb.Text) || item.Phone.Contains(Searchtxb.Text)).ToList();

            if (list.Any())
            {
                ManagerData.Visibility = Visibility.Visible;
                NoResult.Visibility = Visibility.Collapsed;
                ManagerData.ItemsSource = list;
            }
            else
            {
                ManagerData.Visibility = Visibility.Collapsed;
                NoResult.Visibility = Visibility.Visible;
            }
        }

        private void ManagerDelete_Click(object sender, RoutedEventArgs e)
        {
            var selectedItemManager = ManagerData.SelectedItem as Manager;
            if (selectedItemManager != null)
            {
                if (MessageBox.Show("Вы дествительно хотите удалить данные?", "Данные будут удалены навсегда!", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
                {
                    Data.oe.Manager.Remove(selectedItemManager);
                    Data.oe.SaveChanges();
                    MessageBox.Show("Данные успешно удалены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                    Page_Loaded(null, null);
                }

            }
            else
                throw new Exception("Пожалуйста, выберите объект из списка!");
        }

        private void ManagerEdit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var selectedItemManager = ManagerData.SelectedItem as Manager;
                if (selectedItemManager != null)
                    NavigationService.Navigate(new ManagerActionPage(selectedItemManager));
                else
                    throw new Exception("Пожалуйста, выберите объект из списка!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void ManagerAdd_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ManagerActionPage(new Manager()));
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            ManagerData.ItemsSource = Data.oe.Manager.ToList();
        }
    }
 }
