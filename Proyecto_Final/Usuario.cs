//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto_Final
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        public Usuario()
        {
            this.ResultadoMaratonParticipantes = new HashSet<ResultadoMaratonParticipante>();
        }
    
        public int IdUsuario { get; set; }
        public string Email { get; set; }
        public string Contrasenia { get; set; }
        public bool Admin { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public System.DateTime FechaNac { get; set; }
        public string LugarResidencia { get; set; }
    
        public virtual ICollection<ResultadoMaratonParticipante> ResultadoMaratonParticipantes { get; set; }
    }
}
