using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Final
{
    public class ResultadosRepositorio
    {
        public MaratonesEntities Contexto { get; set; }

        public ResultadosRepositorio(MaratonesEntities ctx)
        {
            this.Contexto = ctx;
        }

        public int CrearResultado(ResultadoMaratonParticipante result) //ingresa usr a maraton
        {
            Contexto.ResultadoMaratonParticipantes.Add(result);

            Contexto.SaveChanges();

            return result.IdMaraton;
        }
    }
}