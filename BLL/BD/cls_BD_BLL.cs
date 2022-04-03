using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DAL.BD;

namespace BLL.BD
{
    public class cls_BD_BLL
    {
        public void ExecDataAdapter(ref cls_BD_DAL Obj_BD_DAL)
        {
            try
            {
                if (Obj_BD_DAL.Obj_SqlCnx == null)
                {
                    Obj_BD_DAL.Obj_SqlCnx = new SqlConnection(ConfigurationManager.ConnectionStrings["WIN_AUT"].ToString().Trim());
                }

                if (Obj_BD_DAL.Obj_SqlCnx.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_SqlCnx.Open();
                }

                //crear e instanciar el objeto sqldataadapter
                Obj_BD_DAL.Obj_SqlDap = new SqlDataAdapter(Obj_BD_DAL.sNombreSP, Obj_BD_DAL.Obj_SqlCnx);

                //MANEJO DE PARAMETROS
                #region AGREGAR PARAMETROS AL SqlDataAdapter

                if ((Obj_BD_DAL.DtParametros != null) && (Obj_BD_DAL.DtParametros.Rows.Count > 0))
                {
                    foreach (DataRow dr in Obj_BD_DAL.DtParametros.Rows)
                    {
                        #region DEFINIR LOS TIPOS DE DATOS DE LA BASE DE DATOS

                        SqlDbType SqlDBT = SqlDbType.VarChar;

                        switch (dr["DATATYPE_PARAM"])
                        {
                            case "1":
                                {
                                    SqlDBT = SqlDbType.Char;
                                    break;
                                }
                            case "2":
                                {
                                    SqlDBT = SqlDbType.NChar;
                                    break;
                                }
                            case "3":
                                {
                                    SqlDBT = SqlDbType.VarChar;
                                    break;
                                }
                            case "4":
                                {
                                    SqlDBT = SqlDbType.NVarChar;
                                    break;
                                }
                            case "5":
                                {
                                    SqlDBT = SqlDbType.TinyInt;
                                    break;
                                }
                            case "6":
                                {
                                    SqlDBT = SqlDbType.Int;
                                    break;
                                }
                            case "7":
                                {
                                    SqlDBT = SqlDbType.Float;
                                    break;
                                }
                            case "8":
                                {
                                    SqlDBT = SqlDbType.Decimal;
                                    break;
                                }
                            case "9":
                                {
                                    SqlDBT = SqlDbType.Money;
                                    break;
                                }
                            case "10":
                                {
                                    SqlDBT = SqlDbType.BigInt;
                                    break;
                                }
                            case "11":
                                {
                                    SqlDBT = SqlDbType.Bit;
                                    break;
                                }
                            case "12":
                                {
                                    SqlDBT = SqlDbType.DateTime;
                                    break;
                                }
                            default:
                                {
                                    SqlDBT = SqlDbType.VarChar;
                                    break;
                                }
                        }

                        #endregion

                        Obj_BD_DAL.Obj_SqlDap.SelectCommand.Parameters.Add(dr["NOMB_PARAM"].ToString(), SqlDBT).Value = dr["VALOR_PARAM"].ToString();
                    }
                }

                #endregion

                //darle la seguridad al DAP
                Obj_BD_DAL.Obj_SqlDap.SelectCommand.CommandType = CommandType.StoredProcedure;

                //instanciar el data set
                Obj_BD_DAL.Ds = new DataSet();

                //ejecutamos el proceso en la base de datos
                Obj_BD_DAL.Obj_SqlDap.Fill(Obj_BD_DAL.Ds, Obj_BD_DAL.sNombreTabla);


                Obj_BD_DAL.sMsjError = string.Empty;
            }
            catch (SqlException ex)
            {
                Obj_BD_DAL.sMsjError = ex.Message.ToString();
            }
            finally
            {
                if (Obj_BD_DAL.Obj_SqlCnx.State == ConnectionState.Open)
                {
                    Obj_BD_DAL.Obj_SqlCnx.Close();
                }

                Obj_BD_DAL.Obj_SqlCnx.Dispose();
            }
        }

        public void ExecCommand(ref cls_BD_DAL Obj_BD_DAL)
        {
            try
            {
                if (Obj_BD_DAL.Obj_SqlCnx == null)
                {
                    Obj_BD_DAL.Obj_SqlCnx = new SqlConnection(ConfigurationManager.ConnectionStrings["WIN_AUT"].ToString().Trim());
                }

                if (Obj_BD_DAL.Obj_SqlCnx.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_SqlCnx.Open();
                }

                //crear e instanciar el objeto sqldataadapter
                Obj_BD_DAL.Obj_SqlCmd = new SqlCommand(Obj_BD_DAL.sNombreSP, Obj_BD_DAL.Obj_SqlCnx);

                //MANEJO DE PARAMETROS
                #region AGREGAR PARAMETROS AL SqlDataAdapter

                if ((Obj_BD_DAL.DtParametros != null) && (Obj_BD_DAL.DtParametros.Rows.Count > 0))
                {
                    foreach (DataRow dr in Obj_BD_DAL.DtParametros.Rows)
                    {
                        #region DEFINIR LOS TIPOS DE DATOS DE LA BASE DE DATOS

                        SqlDbType SqlDBT = SqlDbType.VarChar;

                        switch (dr["DATATYPE_PARAM"])
                        {
                            case "1":
                                {
                                    SqlDBT = SqlDbType.Char;
                                    break;
                                }
                            case "2":
                                {
                                    SqlDBT = SqlDbType.NChar;
                                    break;
                                }
                            case "3":
                                {
                                    SqlDBT = SqlDbType.VarChar;
                                    break;
                                }
                            case "4":
                                {
                                    SqlDBT = SqlDbType.NVarChar;
                                    break;
                                }
                            case "5":
                                {
                                    SqlDBT = SqlDbType.TinyInt;
                                    break;
                                }
                            case "6":
                                {
                                    SqlDBT = SqlDbType.Int;
                                    break;
                                }
                            case "7":
                                {
                                    SqlDBT = SqlDbType.Float;
                                    break;
                                }
                            case "8":
                                {
                                    SqlDBT = SqlDbType.Decimal;
                                    break;
                                }
                            case "9":
                                {
                                    SqlDBT = SqlDbType.Money;
                                    break;
                                }
                            case "10":
                                {
                                    SqlDBT = SqlDbType.BigInt;
                                    break;
                                }
                            case "11":
                                {
                                    SqlDBT = SqlDbType.Bit;
                                    break;
                                }
                            case "12":
                                {
                                    SqlDBT = SqlDbType.DateTime;
                                    break;
                                }
                            default:
                                {
                                    SqlDBT = SqlDbType.VarChar;
                                    break;
                                }
                        }

                        #endregion

                        Obj_BD_DAL.Obj_SqlCmd.Parameters.Add(dr["NOMB_PARAM"].ToString(), SqlDBT).Value = dr["VALOR_PARAM"].ToString();
                    }
                }

                #endregion

                //darle la seguridad al DAP
                Obj_BD_DAL.Obj_SqlCmd.CommandType = CommandType.StoredProcedure;

                //instanciar el data set
                Obj_BD_DAL.Ds = new DataSet();

                //ejecutamos el proceso en la base de datos
                if (Obj_BD_DAL.cAxn == 'N')
                {
                    Obj_BD_DAL.Obj_SqlCmd.ExecuteNonQuery();
                }
                else
                {
                    Obj_BD_DAL.Obj_SqlCmd.ExecuteScalar();
                }

                Obj_BD_DAL.sMsjError = string.Empty;
            }
            catch (SqlException ex)
            {
                Obj_BD_DAL.sMsjError = ex.Message.ToString();
            }
            finally
            {
                if (Obj_BD_DAL.Obj_SqlCnx.State == ConnectionState.Open)
                {
                    Obj_BD_DAL.Obj_SqlCnx.Close();
                }

                Obj_BD_DAL.Obj_SqlCnx.Dispose();
            }
        }
    }
}