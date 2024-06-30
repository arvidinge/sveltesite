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
  @import url("https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&display=swap");

  .bodywrap {
    font-family: "Fira Code", sans-serif;
    padding: $gap;
    display: flex;
    flex-direction: column;
    gap: $gap;
    height: 100%;
  }
</style>
