using System.Diagnostics;

namespace Prueba_software_ssasa.DataAccess.DTO
{
    public class DepartamentDTO
    {
        public int codigoDepartamento { get; set; }
        public string nombreDepartamento { get; set; }
        public string descripcionDepartamento { get; set; }
        public int estatus { get; set; }
        public string usuarioCrea { get; set; }
        public DateTime fechaCrea { get; set; }
        public string UsuarioModifica { get; set; }
        public DateTime fechaModifica { get; set; }

        public DepartamentDTO() { }

        public class Builder
        {
            private DepartamentDTO departament;

            public Builder()
            {
                departament = new DepartamentDTO();
            }

            public Builder WithCodigoDepartamento(int codigoDepartamento)
            {
                departament.codigoDepartamento = codigoDepartamento;
                return this;
            }

            public Builder WithNombreDepartamento(string nombreDepartamento)
            {
                departament.nombreDepartamento = nombreDepartamento;
                return this;
            }

            public Builder WithDescripcionDepartamento(string descripcionDepartamento)
            {
                departament.descripcionDepartamento = descripcionDepartamento;
                return this;
            }

            public Builder WithEstatus(int estatus)
            {
                departament.estatus = estatus;
                return this;
            }

            public Builder WithUsuarioCrea(string usuarioCrea)
            {
                departament.usuarioCrea = usuarioCrea;
                return this;
            }

            public Builder WithFechaCrea(DateTime fechaCrea)
            {
                departament.fechaCrea = fechaCrea;
                return this;
            }

            public Builder WithUsuarioModifica(string usuarioModifica)
            {
                departament.UsuarioModifica = usuarioModifica;
                return this;
            }

            public Builder WithFechaModifica(DateTime fechaModifica)
            {
                departament.fechaModifica = fechaModifica;
                return this;
            }

            public DepartamentDTO Build()
            {
                return departament;
            }

        }

    }
}
