using Prueba_software_ssasa.DataAccess.Repository;
using Prueba_software_ssasa.DataAccess.Repository.IRepository;
using Prueba_software_ssasa.Domain.Service;
using Prueba_software_ssasa.Domain.Service.IService;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<IEmployeeRepository, EmployeeRepositoryImpl>();
builder.Services.AddScoped<IServiceEmployee, ServiceEmployeeImpl>();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
