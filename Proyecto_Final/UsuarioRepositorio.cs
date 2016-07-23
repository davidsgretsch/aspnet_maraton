using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class UsuarioRepositorio
    {
        public MaratonesEntities Contexto { get; set; }

        public UsuarioRepositorio(MaratonesEntities ctx)
        {
            this.Contexto = ctx;
        }

        public int CrearUsuario(Usuario user)
        {
            Contexto.Usuarios.Add(user);

            Contexto.SaveChanges();

            return user.IdUsuario;
        }

        public int Modificar(Usuario user)
        {
            Contexto.SaveChanges();

            return user.IdUsuario;
        }
    }
}