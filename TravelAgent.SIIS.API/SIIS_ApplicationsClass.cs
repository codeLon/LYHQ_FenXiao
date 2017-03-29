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
    /// SIIS COM组件 应用类
    /// </summary>
    public class SIIS_ApplicationsClass
    {
        Applications applications = null;
        public SIIS_ApplicationsClass()
        {
            applications = new ApplicationsClass();
        }
        /// <summary>
        /// 返回应用程序库中的所有根应用,并按显示顺序排序
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public Object rsGetAllAppProgram()
        {
            return applications.GetType().InvokeMember("rsGetAllAppProgram", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { });
        }
        /// <summary>
        /// 返回指定应用类型的所有记录集
        /// </summary>
        /// <param name="RootID"></param>
        /// <returns></returns>
        public Object rsGetAllChildProgramFromRootID(int RootID)
        {
            return applications.GetType().InvokeMember("rsGetAllChildProgramFromRootID", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID });
        }
        /// <summary>
        /// 新增一个应用程序根 
        /// </summary>
        /// <param name="proName">应用程序名称</param>
        /// <param name="addDate">新增时间</param>
        /// <param name="addUserID">操作用户ID</param>
        /// <param name="proImg">应用程序图标</param>
        /// <returns>True表示增加成功，False表示增加失败</returns>
        public Boolean boolAddNewAppProgram(string proName, DateTime addDate, int addUserID, string proImg)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolAddNewAppProgram", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { proName, addDate, addUserID, proImg }));
        }
        /// <summary>
        /// 新增一个子应用程序
        /// </summary>
        /// <param name="AppLX">父ID（-1表示根）</param>
        /// <param name="AppMC">新增时间</param>
        /// <param name="AppLJ">应用程序对应路径及文件名</param>
        /// <param name="AppGW">是否允许岗位使用</param>
        /// <param name="AppGR">是否允许个人使用</param>
        /// <param name="AppDate">新增时间</param>
        /// <param name="AppDKFS">打开方式</param>
        /// <param name="AddUserID">操作人ID</param>
        /// <returns>True表示增加成功，False表示增加失败</returns>
        public Boolean boolAddNewChildAppProgram(int AppLX, string AppMC, string AppLJ, bool AppGW, bool AppGR, DateTime AppDate, string AppDKFS, int AddUserID)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolAddNewChildAppProgram", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { AppLX, AppMC, AppLJ, AppGW, AppGR, AppDate, AppDKFS, AddUserID }));
        }

        /// <summary>
        /// 判断根应用下是否还有子应用
        /// </summary>
        /// <param name="RootID">当前选择的根目录ID</param>
        /// <returns>True表示有子应用，False表示没有子应用</returns>
        public Boolean boolHasChildAppFromRootApp(int RootID)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolHasChildAppFromRootApp", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID }));
        }
        /// <summary>
        /// 删除根应用程序(同时删除相应的子应该)
        /// </summary>
        /// <param name="RootID">当前选择的根目录ID</param>
        /// <returns>True表示删除成功，False表示删除失败</returns>
        public Boolean boolDeleteRootAppProgram(int RootID)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolDeleteRootAppProgram", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID }));
        }
        /// <summary>
        /// 删除子应用程序
        /// </summary>
        /// <param name="ChildID">当前选择的子应用ID</param>
        /// <returns>True表示删除成功，False表示删除失败</returns>
        public Boolean boolDeleteChildAppFromChildID(int ChildID)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolDeleteChildAppFromChildID", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { ChildID }));
        }
        /// <summary>
        /// 通过应用程序ID返回应用程序所有信息
        /// </summary>
        /// <param name="AppID">选择</param>
        /// <returns>记录集</returns>
        public Object rsGetAllAppInfoFromAppID(int AppID)
        {
            return applications.GetType().InvokeMember("rsGetAllAppInfoFromAppID", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { AppID });
        }
        /// <summary>
        /// 返回应用程序为根的所有记录的所有信息
        /// </summary>
        /// <returns></returns>
        public Object rsGetAllAppProgramWithRoot()
        {
            return applications.GetType().InvokeMember("rsGetAllAppProgramWithRoot", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { });
        }
        /// <summary>
        /// 上移根权限位置
        /// </summary>
        /// <param name="RootID">根ID</param>
        /// <param name="RootNum">根当前排序号</param>
        /// <param name="RootType">父ID</param>
        /// <returns>True表示成功，False表示失败</returns>
        public Boolean boolUpMoveRoot(int RootID, int RootNum, int RootType)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolUpMoveRoot", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID, RootNum, RootType }));
        }
        /// <summary>
        /// 下移根权限位置
        /// </summary>
        /// <param name="RootID">根ID</param>
        /// <param name="RootNum">根当前排序号</param>
        /// <param name="RootType">父ID</param>
        /// <returns>True表示成功，False表示失败</returns>
        public Boolean boolDownMoveRoot(int RootID, int RootNum, int RootType)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolDownMoveRoot", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID, RootNum, RootType }));
        }
        /// <summary>
        /// 上移子节点根权限位置
        /// </summary>
        /// <param name="RootID">根ID</param>
        /// <param name="RootNum">根当前排序号</param>
        /// <param name="RootType">父ID</param>
        /// <returns>True表示成功，False表示失败</returns>
        public Boolean boolUpMoveChild(int RootID, int RootNum, int RootType)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolUpMoveChild", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID, RootNum, RootType }));
        }
        /// <summary>
        /// 下移子节点根权限位置
        /// </summary>
        /// <param name="RootID">根ID</param>
        /// <param name="RootNum">根当前排序号</param>
        /// <param name="RootType">父ID</param>
        /// <returns>True表示成功，False表示失败</returns>
        public Boolean boolDownMoveChild(int RootID, int RootNum, int RootType)
        {
            return Convert.ToBoolean(applications.GetType().InvokeMember("boolDownMoveChild", BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, applications, new object[] { RootID, RootNum, RootType }));
        }
    }
}
