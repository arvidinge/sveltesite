<script lang="ts">
  import Main from "./lib/Main.svelte";
  import Navbar from "./lib/Navbar.svelte";
</script>

<div class="bodywrap">
  <Navbar />
  <Main />
</div>

<style lang="scss">
  .bodywrap {
    display: flex;
    flex-direction: column;
  }
</style>
