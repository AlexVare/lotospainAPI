﻿using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace LotoSpain_API.Modelos
{
    public class Lototurf
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public DateTime fecha { get; set; }
        public int jornada { get; set; }
        public string combinacion { get; set; }
        public int caballo { get; set; }
        public int reintegro { get; set; }

    }
}
