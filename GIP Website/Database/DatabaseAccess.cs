using GIP_Website.Classes;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http.Headers;
using System.Net.Http;
using Newtonsoft.Json;
using System.IO;
using System.Text;
using System.ComponentModel;

namespace GIP_Website.Database
{
    class DatabaseAccess
    {
        public string getAllComponentsUrl = "https://localhost:7261/Component/GetAllComponents";
        public string postAddComponentUrl = "https://localhost:7261/Component/AddComponent";
        public string postUpdateUrl = "https://localhost:7261/Component/UpdateComponent";
        public string deleteDeleteComponentUrl = "https://localhost:7261/Component/DeleteComponent";
        public string getAlertComponentsUrl = "https://localhost:7261/Component/AlertComponents";
        public string getStateUrl = "https://localhost:7261/Retrieve/GetState";

        public async Task<List<ListComponent>> GetAllComponents()
        {
            var client = new HttpClient();

            try
            {
                var response = await client.GetAsync(getAllComponentsUrl);

                if (response.IsSuccessStatusCode)
                {
                    var result = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<List<ListComponent>>(result.ToString());
                }
                else
                {
                    return null;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> AddComponent(ListComponent component)
        {
            //add try
            try
            {
                var client = new HttpClient();

                var response = await client.PostAsync(postAddComponentUrl, new StringContent(Newtonsoft.Json.JsonConvert.SerializeObject(component), Encoding.UTF8, "application/json"));
                response.EnsureSuccessStatusCode();

                await response.Content.ReadAsStringAsync();

                return response.IsSuccessStatusCode;
            }
            catch
            {
                return false;
            }
        }
        public async Task<bool> UpdateComponent(ListComponent component)
        {
            try
            {
                var client = new HttpClient();

                var response = await client.PostAsync(postUpdateUrl, new StringContent(Newtonsoft.Json.JsonConvert.SerializeObject(component), Encoding.UTF8, "application/json"));
                response.EnsureSuccessStatusCode();
                
                await response.Content.ReadAsStringAsync();

                return response.IsSuccessStatusCode;
            }
            catch
            {
                return false;
            }
        }
        public async Task<bool> DeleteComponent(ListComponent component)
        {
            try
            {
                var client = new HttpClient();

                var response = await client.PostAsync(deleteDeleteComponentUrl, new StringContent(Newtonsoft.Json.JsonConvert.SerializeObject(component), Encoding.UTF8, "application/json"));
                response.EnsureSuccessStatusCode();

                await response.Content.ReadAsStringAsync();

                return response.IsSuccessStatusCode;
            }
            catch
            {
                return false;
            }
        }
        public async Task<int> GetState()
        {
            var client = new HttpClient();

            try
            {
                var response = await client.GetAsync(getStateUrl);

                if (response.IsSuccessStatusCode)
                {
                    var result = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<int>(result.ToString());
                }
                else
                {
                    return 3;
                }
            }
            catch (Exception)
            {
                return 3;
            }
        }
        public async Task<List<ListComponent>> AlertComponent()
        {
            var client = new HttpClient();
            try
            {
                var response = await client.GetAsync(getAlertComponentsUrl);

                if (response.IsSuccessStatusCode)
                {
                    var result = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<List<ListComponent>>(result.ToString());
                }
                else
                {
                    return null;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}