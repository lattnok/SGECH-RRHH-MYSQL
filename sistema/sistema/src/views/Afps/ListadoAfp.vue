<template>
  <v-container id="regular-tables-view" fluid tag="section">
    <view-intro heading="Simple Tables" link="components/simple-tables"/>

    <material-card icon="mdi-clipboard-text" icon-small title="Simple Table" color="accent">   
      <v-simple-table fixed-header class="elevation-3">
        <thead>
          <tr>
            <th>Nombre</th>
            <th>Acciones</th>
          </tr>
          
        </thead>
        <body>
          <!-- <tr v-for="afp in afps" :key ="id_afp"> -->
            <td>{{afp.id_afp}}</td>
            <td>{{afp.nombre}}</td>  
            <td>
              <v-btn>editar</v-btn>      
            </td>
        </body>

      </v-simple-table>

    </material-card>  

  </v-container>
</template>
<script>
let url = 'http:localhost:3000/api/afp/';
import axios from 'axios'; 
export default {
 name:'ListadoAfp',
 mounted(){
   this.obtenerAfps();
 },
 data(){
   return{
     afps:null

   }
 },
 methods:{
   obtenerAfps(){
     axios.get(url)
     .then(Response => {
      this.afps = Response.data;
     })
     .catch((error)=>{

     })
   }
 }
}
</script>



