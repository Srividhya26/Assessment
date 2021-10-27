using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace ShoppingDAL.Model
{
    [Table("USER")]
    public partial class User
    {
        public User()
        {
            Orders = new HashSet<Order>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(100)]
        public string Name { get; set; }
        [Required]
        [Column("EMAILID")]
        [StringLength(100)]
        public string Emailid { get; set; }
        [Required]
        [Column("MOBILENO")]
        [StringLength(10)]
        public string Mobileno { get; set; }
        [Required]
        [Column("ADDRESS")]
        [StringLength(200)]
        public string Address { get; set; }
        [Column("CREATEDAT", TypeName = "datetime")]
        public DateTime Createdat { get; set; }
        [Column("MODIFIEDAT", TypeName = "datetime")]
        public DateTime? Modifiedat { get; set; }
        [Column("ISDELETED")]
        public bool Isdeleted { get; set; }

        [InverseProperty(nameof(Order.User))]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
