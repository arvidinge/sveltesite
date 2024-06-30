<nav>
  <div class="nav-buttons-container">
    <button class="nav-button gradient-button">
      <p>Home</p>
    </button>
    <button class="nav-button gradient-button">
      <p>About</p>
    </button>
    <!-- <button class="nav-button gradient-button">
      <p>Resume</p>
    </button> -->
    <button class="nav-button gradient-button">
      <p>Projects</p>
    </button>
    <button class="nav-button gradient-button">
      <p>Contact</p>
    </button>
  </div>
</nav>

<style lang="scss">
  @use "sass:math";
  @import "src/style/colors";
  @import "src/style/variables";

  $nav-height: 8rem;
  $nav-height-hypot: math.hypot($nav-height);
  $transition: all 1.5s cubic-bezier(0.08, 0.68, 0.53, 0.99);

  button {
    all: unset;
  }
  button.nav-button > p {
    pointer-events: none;
  }

  nav {
    position: relative;
    height: $nav-height;

    font-weight: 400;
    text-transform: uppercase;
    background-color: $color-background;
    overflow: hidden;
  }

  .nav-buttons-container {
    height: 100%;
    display: flex;
    position: relative;
    gap: $gap;
    height: 100%;
    background: transparent;
  }

  @function diagonal-gradient($invert: false) {
    $anti-alias-amount: 0%;
    $start-color: if($invert==true, $color-background, $color-primary);
    $end-color: if($invert==true, $color-primary, $color-background);

    @return linear-gradient(
      135deg,
      $start-color 0%,
      $start-color 50% - $anti-alias-amount,
      $end-color 50% + $anti-alias-amount,
      $end-color 100%
    );
  }

  .nav-button {
    flex: 1;
  }

  .gradient-button {
    background: diagonal-gradient();
    background-size: calc(200% + $nav-height-hypot) 100%;
    background-position-x: calc(100% + 1px);
    cursor: pointer;
    transition: $transition;
    // border: $gap solid black;
    // border-bottom: 2px solid $color-primary;

    p {
      user-select: none;
      position: relative;
      text-align: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      height: 100%;

      font-size: 1.5rem;
      letter-spacing: 0.5rem;

      background: diagonal-gradient($invert: true);
      background-size: calc(200% + $nav-height-hypot) 100%;
      background-position-x: calc(100% + 1px);

      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      transition: $transition;
    }

    &:hover {

      background-position-x: 0%;
      p {
        background-position-x: 0%;
      }
    }
  }
</style>
