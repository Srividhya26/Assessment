using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace ShoppingDAL.Model
{
    [Keyless]
    [Table("ORDERDETAIL")]
    public partial class Orderdetail
    {
        [Column("ORDERID")]
        public int? Orderid { get; set; }
        [Column("PRODUCTID")]
        public int? Productid { get; set; }
        [Column("PRICE", TypeName = "decimal(18, 0)")]
        public decimal? Price { get; set; }
        [Column("QUANTITY")]
        public int? Quantity { get; set; }

        [ForeignKey(nameof(Orderid))]
        public virtual Order Order { get; set; }
        [ForeignKey(nameof(Productid))]
        public virtual Product Product { get; set; }
    }
}
