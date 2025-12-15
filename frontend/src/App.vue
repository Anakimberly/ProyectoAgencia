<script setup>
import PersonaeList from './components/PersonaeList.vue'
</script>

<template>
  <div class="app-container">
    <header class="app-header">
      <h1>🏢 Sistema de Gestión de Agencia</h1>
      <p class="subtitle">Gestión completa de personas, aportaciones y cargos</p>
    </header>
    
    <main class="app-main">
      <PersonaeList />
    </main>
  </div>
</template>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
  background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
  min-height: 100vh;
}

.app-container {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.app-header {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 30px 20px;
  text-align: center;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
}

.app-header h1 {
  font-size: 2.5rem;
  font-weight: 700;
  margin-bottom: 10px;
}

.subtitle {
  font-size: 1.1rem;
  opacity: 0.95;
  font-weight: 300;
}

.app-main {
  flex: 1;
  padding: 20px;
}

.app-footer {
  background: #2c3e50;
  color: white;
  text-align: center;
  padding: 30px;
  width: 100%;
  margin-top: auto; /* Empuja el footer al fondo si hay poco contenido */
  position: relative; /* Asegura que siga el flujo del documento */
}
</style>

