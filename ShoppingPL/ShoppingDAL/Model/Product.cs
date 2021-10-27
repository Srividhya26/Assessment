using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace ShoppingDAL.Model
{
    [Table("PRODUCT")]
    public partial class Product
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(100)]
        public string Name { get; set; }
        [Column("CATEGORYID")]
        public int Categoryid { get; set; }
        [Required]
        [Column("IMAGE")]
        [StringLength(250)]
        public string Image { get; set; }
        [Column("STOCK")]
        public int Stock { get; set; }
        [Column("PRICE", TypeName = "decimal(18, 0)")]
        public decimal Price { get; set; }

        [ForeignKey(nameof(Categoryid))]
        [InverseProperty("Products")]
        public virtual Category Category { get; set; }
    }
}
