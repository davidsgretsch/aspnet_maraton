using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class MaratonRepositorio
    {
        public MaratonesEntities Contexto { get; set; }

        public ResultadoMaratonParticipante Inscribir { get; set; }

        public MaratonRepositorio()
        { 
        
        }

        public MaratonRepositorio(MaratonesEntities ctx)
        {
            this.Contexto = ctx;
        }

        public int Crear(Maraton m)
        {
            Contexto.Maratons.Add(m);

            Contexto.SaveChanges();

            return m.IdMaraton;
        }

        public int AgregarUsuario(Usuario u)
        {
            Contexto.Usuarios.Add(u);

            Contexto.SaveChanges();

            return u.IdUsuario;
        }
    }
}