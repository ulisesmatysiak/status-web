﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class User
    {
        public int Id { get; set; }

        public string Email { get; set; }

        public string Pass { get; set; }

        public bool Admin { get; set; }
    }
}
