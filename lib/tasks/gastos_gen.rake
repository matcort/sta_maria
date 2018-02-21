
namespace :gastos_gen do
    desc "Agrega gasto de arriendo a todos los locales activos"
    task :mensualidad => :environment do
    #    contratos = Contrato.where(estado: true)
        puts "Inside task now #{Time.now}"
        Gasto.create(local_id: 1, nombre: "Gasto5", monto:5000)
          #command "echo 'you can use raw cron syntax too'"
    end
end
