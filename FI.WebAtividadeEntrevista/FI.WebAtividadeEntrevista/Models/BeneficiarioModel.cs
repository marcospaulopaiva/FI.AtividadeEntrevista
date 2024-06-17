using System.ComponentModel.DataAnnotations;

namespace WebAtividadeEntrevista.Models
{
    public class BeneficiarioModel
    {
        public long Id { get; set; }

        /// <summary>
        /// Nome
        /// </summary>
        [Required]
        public string Nome { get; set; }

        /// <summary>
        /// CPF
        /// </summary>
        [Required]
        [RegularExpression(@"^\d{3}.?\d{3}.?\d{3}-?\d{2}$", ErrorMessage = "Digite um CPF válido")]
        public string CPF { get; set; }

        /// <summary>
        /// IDCLIENTE
        /// </summary>
        [Required]        
        public long IDCLIENTE { get; set; }
    }
}
