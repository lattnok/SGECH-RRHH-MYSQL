<template>
  <v-card>
    <v-card-title>
      Personal
      <v-spacer></v-spacer>
      <td><v-btn>Editar</v-btn></td>
      <v-text-field
        v-model="search"        
        label="Buscar"
        single-line
        hide-details
      ></v-text-field>
    </v-card-title>
    <v-data-table
      :headers="headers"
      :items="desserts"
      :search="search"
    >
      <template v-slot:items="props">
        <td>{{ props.item.name }}</td>
        <td class="text-xs-right">{{ props.item.nombres }}</td>
        <td class="text-xs-right">{{ props.item.APaterno }}</td>
        <td class="text-xs-right">{{ props.item.AMaterno }}</td>
        <td class="text-xs-right">{{ props.item.protein }}</td>
        <td class="text-xs-right">{{ props.item.iron }}</td>
      </template>
      <template v-slot:no-results>
        <v-alert :value="true" color="error" icon="warning">
          No se encuentra resultados para  "{{ search }}"  lo siento :-(
        </v-alert>
      </template>
    </v-data-table>
  </v-card>
</template>

<script>
  export default {
    data () {
      return {
        search: '',
        headers: [
          {
            text: 'RUT',
            align: 'left',
            sortable: false,
            value: 'rut'
          },
          { text: 'Nombres', value: 'nombres' },
          { text: 'Apellido Paterno', value: 'a.paterno' },
          { text: 'Apellido Materno', value: 'a.materno' },
          { text: 'F. Nacimiento', value: 'f.nacimiento' },
          { text: 'Nacionalidad', value: 'nacionalidad' },
           { text: 'Genero', value: 'genero' },
          { text: 'Especialidad', value: 'especialidad' },
          { text: 'Password', value: 'password' },
          { text: 'Mail', value: 'mail' },
          { text: 'Estado Civil', value: 'e.civil' },
           { text: 'Dirección', value: 'direccion' },
          { text: 'Región', value: 'region' },
          { text: 'Provincia', value: 'provincia' },
          { text: 'Comuna', value: 'comuna' },
          { text: 'Fono', value: 'fono' },
           { text: 'Celular 1 ', value: 'celular1' },
           { text: 'Celular 2 ', value: 'celular2' },
          { text: 'Contacto', value: 'contacto' },
          { text: 'Previsión', value: 'prevision' },
          { text: 'Afp', value: 'afp' },
          { text: 'Banco', value: 'banco' }

        ],      
         desserts: [
          {
            rut: '1388555',
            nombres: 159,
            fat: 6.0,
            carbs: 24,
            protein: 4.0,
            iron: '1%'
          },   
         ]    
      }
    }
  }
</script>