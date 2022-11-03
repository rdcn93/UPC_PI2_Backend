
using ClosedXML.Excel;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using PremierBeef.Core.Entities;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;

namespace UploadFilesToBlob
{
    class Program
    {
        public List<string> columnasVentas = new List<string>() { "", "" };
        static void Main(string[] args)
        {
            //string connectionString = CloudConfigurationManager.GetSetting("StorageConnectionString"); //blob connection string
            //string sourceContainerName = ConfigurationManager.AppSettings["sourcecontainerName"]; //source blob container name           
            string sourceBlobFileName = "test.xlsx"; //source blob name

            var dsd = GeneararDataVentas("","");
        }

        /// <summary>
        /// GetExcelBlobData
        /// Gets the Excel file Blob data and returns a dataset
        /// </summary>
        /// <param name="filename"></param>
        /// <param name="connectionString"></param>
        /// <param name="containerName"></param>
        /// <returns></returns>
        private static DataSet GeneararDataVentas(string fechaInicio, string fechaFin)
        {

            DataSet ds = new DataSet();

            #region MyRegion
            //using (var workbook = new XLWorkbook("HelloWorld.xlsx"))
            //{
            //    #region MyRegion
            //    ////Buscamos con LinQ la hohja que nos interesa copiar
            //    //var SampleSheet = workbook.Worksheets.Where(x => x.Name == "Sample Sheet").First();
            //    ////Añadimos una hoja nuevo
            //    //var worksheet = workbook.Worksheets.Add("FixedBuffer");
            //    ////Copiamos los valores
            //    //worksheet.Cell("A1").Value = SampleSheet.Cell("A1").GetString().ToUpper();
            //    //worksheet.Cell("A2").FormulaA1 = SampleSheet.Cell("A2").FormulaA1;
            //    ////Guardamos el libro
            //    ////workbook.Save();  
            //    #endregion

            //}
            #endregion

            using (var wb = new XLWorkbook())
            {
                var ws = wb.Worksheets.Add("Sample Sheet");

                ws.Cell(1, 1).Value = "Hello World!";
                wb.SaveAs("D:\\UPC\\PROYECTO DE INVESTIGACIÓN 2\\Proyecto\\HelloWorld.xlsx");

                using (var stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    var content = stream.ToArray();
                }
            }
            //IXLWorkbook wb = new XLWorkbook();
            //IXLWorksheet ws = wb.Worksheets.Add("Sample Sheet");

            //ws.Cell(1, 1).Value = "Hello World!";
            //wb.SaveAs("D:\\UPC\\PROYECTO DE INVESTIGACIÓN 2\\Proyecto\\HelloWorld.xlsx");

            

            return ds;
        }



    }
}