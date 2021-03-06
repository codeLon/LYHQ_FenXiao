﻿using System;
using System.Web;
using ControlPanel.Promotions;

namespace Hidistro.UI.Web.Admin.promotion
{
    public class EditExchangeProducts : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                int exchangeId = int.Parse(context.Request["id"].ToString());
                string productIds = context.Request["products"];
                string pNumbers = context.Request["pNumbers"];
                string points = context.Request["points"];
                string eachNumbers = context.Request["eachNumbers"];
                if (PointExChangeHelper.EditProducts(exchangeId, productIds, pNumbers, points, eachNumbers))
                {
                    context.Response.Write("{\"type\":\"success\",\"data\":\"\"}");
                }
                else
                {
                    context.Response.Write("{\"type\":\"success\",\"data\":\"写数据库失败\"}");
                }
            }
            catch (Exception exception)
            {
                context.Response.Write("{\"type\":\"error\",\"data\":\"" + exception.Message + "\"}");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}

