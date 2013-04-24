<?php 
  $this->load->helper('url');
  $url = trim(base_url());
?>
<!-- //////////////////////////////////////////////////////////// -->
<!-- Barra de Titulo-->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="<?=$url?>">cursos extracurriculares CIFCA</a></h1>
      <p>(Coordinación de cursos extracurriculares)</p>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row5">
  <div id="container" class="clear">
    <!-- ####################################################################################################### -->
    <div id="content">
      <h2>Pre-registro</h2>
      <div id="respond">
        <form action="#" method="post">
          <p>
            <input type="text" name="name" id="name" value="" size="22" placeholder="Nombre" />
            <label for="name"><small>(requerido)</small></label>
          </p>
          <p>
            <input type="text" name="apPat" id="apPat" value="" size="22" placeholder="Apellido paterno" />
            <label for="apPat"><small>(requerido)</small></label>
          </p>
          <p>
            <input type="text" name="apMat" id="apMat" value="" size="22" placeholder="Apellido materno" />
            <label for="apMat"><small>(requerido)</small></label>
          </p>
          <p>
            <input type="text" name="cuenta" id="cuenta" value="" size="22" placeholder="N&uacute;mero de cuenta" />
            <label for="cuenta"><small>(requerido)</small></label>
          </p>
          <p>
            <input type="text" name="email" id="email" value="" size="22" placeholder="Mail" />
            <label for="email"><small>(requerido)</small></label>
          </p>
          <p>
            <input type="text" name="tel" id="tel" value="" size="22" placeholder="Tel&eacute;fono" />
            <label for="tel"><small>(requerido)</small></label>
          </p>
          <p>
            <input type="text" name="cel" id="cel" value="" size="22" placeholder="Tel&eacute;fono celular" />
            <label for="cel"><small>(requerido)</small></label>
          </p>
          <p>
            <select id='curso'>
              <option value='--'>Selecciona curso</option>
              <option value='Word'>Word</option>
              <option value='Excel'>Excel</option>
              <option value='...'>etc</option>
            </select>
            <label for="curso"><small>(requerido)</small></label>
          </p>          
          <p>
            <input name="btnEnv" type="button" id="btnEnv" value="Envíar" />
            &nbsp;
            <input name="btnReset" type="reset" id="btnReset" tabindex="5" value="Cancelar" />
          </p>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- //////////////////////////////////////////////////////////// -->
<!-- información final -->
<div class="wrapper">
  <div id="footer" class="clear">
    <div id="copyright" class="clear">
      <p class="fl_left">Copyright &copy; 2013 - All Rights Reserved - <a href="#">CIFCA</a></p>
      <!--<p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
    </div>
    <!-- -->
  </div>
</div>