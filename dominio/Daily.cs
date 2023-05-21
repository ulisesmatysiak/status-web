using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Daily
    {
        public int Id { get; set; }

        public DateTime Fecha { get; set; }

        public int Score { get; set; }

        public string Words { get; set; }

        public bool Helped { get; set; }

        public Usuario User { get; set; }
    }
}
