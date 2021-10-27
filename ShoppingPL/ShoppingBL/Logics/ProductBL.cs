
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using ShoppingDAL.Access;
using ShoppingDAL.Data;
using ShoppingDAL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingBL.Logics
{
    public class ProductBL
    {
        private readonly ProductDAL _productDAL;
        private readonly ShoppingContext _db;

        public ProductBL(IConfiguration configuration, ProductDAL productDAL, ShoppingContext db)
        {
            this._productDAL = productDAL;
            this._db = db;
        }

        public async Task<IEnumerable<Product>> GetAllProducts()
        {
            return await _productDAL.GetAllProducts();
        }

        public async Task<IEnumerable<Product>> GetProductByCategoryId(int searchCategory)
        { 
            return await _productDAL.GetProductByCategory(searchCategory);
        }

        public IEnumerable<SelectListItem> GetAllCategories()
        {
            IEnumerable<SelectListItem> listOfCategories = _db.Categories.Select(x =>
            new SelectListItem
            {
                Text = x.Name,
                Value = x.Id.ToString()
            });

            return listOfCategories;

        }

        public Product Cart(int ItemId)
        {
            Product objItem = _db.Products.Single(model => model.Id == ItemId);
            return objItem;
        }

        public void AddOrder(Orderdetail order)
        {
            _productDAL.Add(order);
        }

        public async Task<Product> GetProductById(int id)
        {
            return await _productDAL.GetProductById(id);
        }
    }
}
