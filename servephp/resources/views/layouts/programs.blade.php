---
import Layout from "../../layouts/Layout.astro";
---

<Layout title="Selecciona el programa de tu preferencia">
  <link rel="stylesheet" href="./css/programs.css">
  <div class="container">
    <div class="container mb-3" style="zoom:0.8">
      <div class="text-center mt-5">
        <img
          src="https://tramiteinformativo.com/wp-content/uploads/2022/08/logo-sena-verde-png-sin-fondo.png"
          alt="Logo"
          class="img-fluid"
          style="max-width: 180px;"
        />
      </div>
    </div>
    <div class="row content-title">
      <h3 class="text-success">Bienvenido: Pepito perez</h3>
      <h5 class="text-left">
        Selecciona uno de nuestros programas disponibles
      </h5>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam
        reprehenderit illum obcaecati rem animi est autem rerum quod ducimus
        vitae perspiciatis, ipsa, accusamus maiores pariatur sint sapiente
        ratione, doloribus saepe!
      </p>
    </div>
    <div class="row" id="card_sena">
      <!-- Tecnólogo en Análisis y Desarrollo de Software (ADSO) 
      Tecnólogo en Gestión del Talento Humano 
      Tecnólogo en Coordinación de Operaciones Logísticas (Logística) 
      Tecnólogo en Gestión Integrada de la Calidad, Medio Ambiente,
      Seguridad y Salud Ocupacional 
      Tecnólogo en Gestión Contable y de Administración Financiera (Contabilidad) 
      Tecnólogo en Producción de Calzado y Marroquinería -->
    </div>
    <div class="row mb-4 mr-2" style="display: flex; justify-content: flex-end; margin-right: 10px">
      <button
        id="btn-send-programs"
        class="btn btn-success"
        style="width: 150px"
        type="submit">Seleccionar</button
      >
    </div>
  </div>

  <script
    type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
  <script type="text/javascript" src="./js/queries.js"></script>
  
  <script type="text/javascript" src="./js/programs.js"></script>
</Layout>

<style>
  .content-title {
    margin: 0 auto;
    margin-top: 20px;
    margin-bottom: 2em;
  }
  .content-finaly {
    display: flex;
    justify-content: right;
  }
</style>
