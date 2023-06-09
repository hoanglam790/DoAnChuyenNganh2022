﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace WebAppQuanLyBongDa
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
            
            /*config.Routes.MapHttpRoute(
               name: "SanBongDaApi",
               routeTemplate: "{controller}/{MaSan}",
               defaults: new { MaSan = RouteParameter.Optional }
           );

            config.Routes.MapHttpRoute(
              name: "CacLoaiSanApi",
              routeTemplate: "{controller}/{MaLoaiSan}",
              defaults: new { MaSan = RouteParameter.Optional }
          );*/

            // WebAPI when dealing with JSON & JavaScript!
            // Setup json serialization to serialize classes to camel (std. Json format)
            var formatter = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
            formatter.SerializerSettings.ContractResolver =
                new Newtonsoft.Json.Serialization.CamelCasePropertyNamesContractResolver();
        }
    }
}
