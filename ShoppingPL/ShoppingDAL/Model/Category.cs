using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace ShoppingDAL.Model
{
    [Table("CATEGORY")]
    public partial class Category
    {
        public Category()
        {
            Products = new HashSet<Product>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(100)]
        public string Name { get; set; }
        [Column("CREATEDAT", TypeName = "datetime")]
        public DateTime Createdat { get; set; }
        [Column("MODIFIEDAT", TypeName = "datetime")]
        public DateTime? Modifiedat { get; set; }
        [Column("ISDELETED")]
        public bool Isdeleted { get; set; }

        [InverseProperty(nameof(Product.Category))]
        public virtual ICollection<Product> Products { get; set; }
    }
}
