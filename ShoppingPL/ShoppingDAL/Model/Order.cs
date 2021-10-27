using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace ShoppingDAL.Model
{
    [Table("ORDER")]
    public partial class Order
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("USERID")]
        public int? Userid { get; set; }

        [ForeignKey(nameof(Userid))]
        [InverseProperty("Orders")]
        public virtual User User { get; set; }
    }
}
