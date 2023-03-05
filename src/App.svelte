<script lang="ts">
  import Main from "./lib/Main.svelte";
  import Navbar from "./lib/Navbar.svelte";
</script>

<div class="bodywrap">
  <Navbar />
  <Main />
</div>

<style lang="scss">
  @import "src/style/variables";

  .bodywrap {
    padding: $gap;
    display: flex;
    flex-direction: column;
    gap: $gap;
  }
</style>
