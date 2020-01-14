<template>
  <div id="how" class="container">
    <div class="bg">
      <div class="left-cube"></div>
      <div class="right-cube"></div>
    </div>
    <div class="inner">
      <div class="content">
        <h1 class="title">How to use</h1>
        <div class="desc">
          <p>If you were to write an SGX Hello World project using some Enclave SDK (e.g., Intel SGX SDK), the project would consist of hundreds of lines of code. And to do that, you have to spend a great deal of time to learn the APIs, the programming model, and the built system of the SGX SDK.</p>
          <p>Thanks to Occlum, you can be freed from writing any extra enclave-aware code and only need to type some simple commands to protect your application with enclaves transparently (see the figure).</p>
        </div>
      </div>
      <div class="diagram">
        <img src="~/assets/image/cli.png" alt="">
        <div class="code">
          <div class="line">$ occlum-gcc hello.c -o hello</div>
          <div class="line">$ occlum init</div>
          <div class="line out">Initialized an Occlum context</div>
          <div class="line">$ cp hello image/bin</div>
          <div class="line">$ occlum build</div>
          <div class="line out">Build the Occlum image and enclave successfully</div>
          <div class="line">$ occlum run /bin/hello</div>
          <div class="line out">Hello!</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  components: {
  }
}
</script>

<style scoped lang="postcss">
@import "~/assets/css/base.css";

.container {
  padding: 120px 0 0px 0;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: relative;
  @media (--mobile) {
    padding: 50px 0 60px 0;
  }
  .bg {
    top: 0;
  }
  .inner {
    display: flex;
    @media (--mobile) {
      flex-direction: column;
    }
    .content {
      width: 100%;
    }
    .diagram {
      position: relative;
      img {
        max-width: 500px;
      }
      .code {
        opacity: 0.8;
        font-family: monaco, monospace;
        font-size: 15px;
        position: absolute;
        margin: 55px 0 0 20px;
        top: 0;
        left: 0;
        line-height: 25px;
        .out {
          color: $color-second;
        }
      }
      @media (--table-small) {
        img {
          max-width: 400px;
        }
        .code {
          font-size: 13px;
          line-height: 20px;
          margin: 45px 0 0 15px;
        }
      }
      @media (--mobile) {
        img {
          max-width: 100%;
        }
        .code {
          font-size: 12px;
          line-height: 16px;
          margin: 9vw 0 0 10px;
        }
      }
    }
  }
}
</style>
