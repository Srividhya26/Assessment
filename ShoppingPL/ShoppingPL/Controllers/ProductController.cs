using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using ShoppingBL.Logics;
using ShoppingDAL.Data;
using ShoppingDAL.Model;
using ShoppingPL.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ShoppingPL.Controllers
{
    public class ProductController : Controller
    {
        private readonly ProductBL _productBL;
        private readonly List<ProductViewModel> product;

        public ProductController(ProductBL productBL)
        {
            this._productBL = productBL;
            product = new List<ProductViewModel>();
        }

        public async Task<IActionResult> Index(Product product,int searchCategory)
        {
            
            ViewBag.categories = _productBL.GetAllCategories();

            if (searchCategory == default)
            {
                IEnumerable<Product> allProducts = await _productBL.GetAllProducts();

                return View(allProducts);
            }
            
            else
            {
                IEnumerable<Product> productById = await _productBL.GetProductByCategoryId(searchCategory);

                return View(productById);
            }
            
        }

        [HttpPost]
        public JsonResult Index(int ItemId)
        {
            ProductViewModel cartView = new ProductViewModel();
            Product objitem = _productBL.Cart(ItemId);
            if(cartView.Any(modell => modell.Id == ItemId))
            {
                cartView = product.Single(model => model.Id == ItemId);
                cartView.Stock = cartView.Stock + 1;
                cartView.Total = cartView.Stock * cartView.Price;
            }
            else
            {
                cartView.Id = ItemId;
                cartView.Name = objitem.Name;
                cartView.Image = objitem.Image;
                cartView.Price = objitem.Price;
                cartView.Stock = objitem.Stock;
                cartView.Total = objitem.Price;
                product.Add(cartView);

            }
            return Json("", System.Web.Mvc.JsonRequestBehavior.AllowGet);
        }

    }
}
