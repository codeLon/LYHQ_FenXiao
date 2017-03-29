using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SIIS;
using System.Reflection;

namespace ManWee.TripDist.SIIS.API
{
    /// <summary>
    /// SIIS COM组件 在线用户类
    /// </summary>
    public class SIIS_OnLineUserClass
    {
       
        OnLineUser onLineUser = null;
        public SIIS_OnLineUserClass()
        {
            onLineUser = new OnLineUserClass();
        }
        /// <summary>
        /// 判断用户名及密码是否合法,00000000-0000-0000-0000-000000000000表示帐号或密码错误
        /// </summary>
        /// <param name="userName">用户名</param>
        /// <param name="password">密码</param>
        /// <returns></returns>
        public string strGetLoginUserID(string userName, string password)
        {
            return onLineUser.GetType().InvokeMember("strGetLoginUserID", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { userName, password }).ToString();
        }
        /// <summary>
        /// 帐号冻洁状态 True表示未冻洁，False表示已冻洁
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public bool boolGetUserStatus(string userID)
        {
            return Convert.ToBoolean(onLineUser.GetType().InvokeMember("boolGetUserStatus", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { userID }));
        }
        /// <summary>
        /// 删除在线信息
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public bool boolClearOnLineUser(string userID)
        {
            return Convert.ToBoolean(onLineUser.GetType().InvokeMember("boolClearOnLineUser", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { userID }));
        }
        /// <summary>
        /// 增加一个在线用户
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="logTime"></param>
        /// <param name="ip"></param>
        /// <returns></returns>
        public bool boolAddNewOnLineUser(string userID, DateTime logTime, string ip)
        {
            return Convert.ToBoolean(onLineUser.GetType().InvokeMember("boolAddNewOnLineUser", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { userID, logTime, ip }));
        }
        /// <summary>
        /// 得到已经登录用户的IP
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public bool StrGetOnLineUserIP(string userID)
        {
            return Convert.ToBoolean(onLineUser.GetType().InvokeMember("StrGetOnLineUserIP", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { userID }));
        }
        /// <summary>
        /// 返回所有在线用户的信息
        /// </summary>
        /// <returns></returns>
        public bool rsGetAllOnLineUserInfo()
        {
            return Convert.ToBoolean(onLineUser.GetType().InvokeMember("rsGetAllOnLineUserInfo", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { }));
        }
        public bool lngGetOnLineUserNumber()
        {
            return Convert.ToBoolean(onLineUser.GetType().InvokeMember("lngGetOnLineUserNumber", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, onLineUser, new object[] { }));
        }
    }
}
