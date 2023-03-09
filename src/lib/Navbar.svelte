<nav>
  <div class="nav-buttons-container">
    <div class="home-button gradient-button">
      <p>Home</p>
    </div>
    <div class="nav-button gradient-button">
      <p>About</p>
    </div>
    <div class="nav-button gradient-button">
      <p>Resume</p>
    </div>
    <div class="nav-button gradient-button">
      <p>Projects</p>
    </div>
    <div class="nav-button gradient-button">
      <p>Contact</p>
    </div>

    <!-- <div class="social-section">
      <p>Twitter</p>
    </div> -->
  </div>
</nav>

<style lang="scss">
  @use "sass:math";
  @import "src/style/colors";
  @import "src/style/variables";
  @import url("https://fonts.googleapis.com/css2?family=League+Spartan:wght@700&display=swap");

  $nav-height: 8rem;
  $nav-height-hypot: math.hypot($nav-height);
  $transition: all 1.5s cubic-bezier(0.08, 0.68, 0.53, 0.99);

  nav {
    position: relative;
    height: $nav-height;

    font-family: "League Spartan", sans-serif;
    text-transform: uppercase;
    background-color: white;
    mix-blend-mode: multiply; // The magic
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
    $start-color: if($invert==true, black, white);
    $end-color: if($invert==true, white, black);

    @return linear-gradient(
      135deg,
      $start-color 0%,
      $start-color 50% - $anti-alias-amount,
      $end-color 50% + $anti-alias-amount,
      $end-color 100%
    );
  }

  .home-button {
    width: $nav-height;
  }

  .nav-button {
    flex: 1;
  }

  .gradient-button {
    color: white;
    background: diagonal-gradient();
    background-size: calc(200% + $nav-height-hypot) 100%;
    background-position-x: calc(100% + 1px);
    cursor: pointer;
    transition: $transition;
    border: 2px solid black;

    p {
      user-select: none;
      position: relative;
      text-align: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      height: 100%;
      font-size: 2rem;

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
