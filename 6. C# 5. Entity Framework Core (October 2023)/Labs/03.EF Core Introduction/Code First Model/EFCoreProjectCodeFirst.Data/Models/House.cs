using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFCoreProjectCodeFirst.Data.Models
{
    public class House
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }
    }
}