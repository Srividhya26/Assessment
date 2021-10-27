using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using ShoppingDAL.Data;
using ShoppingDAL.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingDAL.Access
{
    public class ProductDAL
    {
        private readonly IConfiguration _configuration;
        private readonly ShoppingContext _db;

        public ProductDAL(IConfiguration configuration)
        {
            this._configuration = configuration;
        }

        public async Task<IEnumerable<Product>> GetAllProducts()
        {
            using IDbConnection dbConnection = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

            string sp = "[dbo].[SP_GETALLPRODUCT]";

            var listOfProduct = await Task.FromResult(dbConnection.Query<Product>(sp, commandType: CommandType.StoredProcedure).ToList());

            return listOfProduct;
        }

        public async Task<IEnumerable<Product>> GetProductByCategory(int searchCategory)
        {
            using IDbConnection dbConnection = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

            string sp = "[dbo].[SP_GETPRODUCTBASEDONCATEGORY]";

            DynamicParameters parameters = new();

            parameters.Add("@CATEGORYID", searchCategory);

            return await Task.FromResult(dbConnection.Query<Product>(sp, parameters, commandType: CommandType.StoredProcedure).ToList());

        }      

        public async Task<Product> GetProductById(int id)
        {
            using IDbConnection dbConnection = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

            string sp = "[dbo].[SP_GETPRODUCTBYID]";

            DynamicParameters parameters = new();

            parameters.Add("@ID", id);

            return await Task.FromResult(dbConnection.Query<Product>(sp, parameters, commandType: CommandType.StoredProcedure).FirstOrDefault());
        }

        public void Add(Orderdetail order)
        {
            _db.Add(order);
        }


    }
}
