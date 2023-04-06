<script lang="ts">
  import Main from "./lib/Main.svelte";
  import Navbar from "./lib/Navbar.svelte";
  import Projects from "./lib/Projects.svelte";
</script>

<div class="bodywrap">
  <Navbar />
  <!-- <Projects /> -->
  <Main />
</div>

<style lang="scss">
  @import "src/style/variables";

  .bodywrap {
    padding: $gap;
    display: flex;
    flex-direction: column;
    gap: $gap;
    height: 100%;
  }
</style>
