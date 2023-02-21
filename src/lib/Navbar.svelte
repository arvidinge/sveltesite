<script lang="ts">
</script>

<nav>
    <div class="nav-background" />
    <div class="nav-buttons-container">
        <div class="nav-button">
            <p>Projects</p>
        </div>
        <div class="nav-button">
            <p>About</p>
        </div>
        <div class="social-section">
            <p>Twitter</p>
        </div>
    </div>
</nav>

<style lang="scss">
    @import "../style/colors.scss";
    @import url("https://fonts.googleapis.com/css2?family=League+Spartan:wght@700&display=swap");

    $gap: 4px;

    nav {
        position: relative;
        height: 8rem;
        width: 100vw;
        font-family: "League Spartan", sans-serif;
        text-transform: uppercase;
    }

    .nav-buttons-container {
        height: 100%;
        display: flex;
        position: relative;
        gap: $gap;
        padding: $gap;
        height: calc((100% - $gap * 2) - ($gap/20));
    }

    $transition-in: all 0.3s cubic-bezier(0, 0.14, 0.42, 0.99);
    $transition-out: all 2s cubic-bezier(0, 0.14, 0.42, 0.99);
    .nav-button {
        color: white;
        background: black;
        mix-blend-mode: multiply; // The magic
        transition: all 0.1s linear;
        cursor: pointer;

        p {
            user-select: none;
            position: relative;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100%;

            &::before {
                position: absolute;
                content: "";
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                z-index: -1;
                height: 80%;
                width: 80%;
                transform: translate(12.5%, 12.5%);
                background: radial-gradient(
                    ellipse at 50% 50%,
                    hsl(0, 0%, 60%) 0%,
                    black 75%
                );
                filter: blur(15px);
                opacity: 0.3;
                transition: $transition-out;
            }
        }

        &:nth-child(1),
        &:nth-child(2) {
            width: 25%;
        }

        &:hover {
            p::before {
                opacity: 1;
                transition: $transition-in;
            }
        }
    }

    .nav-background {
        position: absolute;
        height: 100%;
        width: 400vw;
        z-index: 0;
        background: linear-gradient(
            to right,
            $color-primary,
            $color-secondary,
            $color-tertiary,
            $color-secondary,
            $color-primary,
            $color-secondary,
            $color-tertiary,
            $color-secondary,
            $color-primary
        );
        backdrop-filter: blur(50px);

        animation: scroll-right linear 10s infinite;
    }

    @keyframes scroll-right {
        from {
            transform: translateX(-50%);
        }

        to {
            transform: translateX(0%);
        }
    }
</style>
