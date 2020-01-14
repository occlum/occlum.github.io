<template>
  <div id="why" class="container">
    <div class="inner">
      <h1 class="title right">Why Occlum</h1>
      <div class="content">
        <img src="~/assets/image/architecture.svg" alt="" class="diagram">
        <div class="desc">
          <p>Modern applications involve very dynamic deployment scenarios, e.g. public clouds, edge sites, which often are totally untrusted environments. While computation confidentiality and integrity are highly desired in these cases, Intel SGX is famous for being hard to use.</p>
          <p>Occlum is built to make application protection very simple. <span class="bold">It allows one to run prebuilt Docker images in SGX enclaves with one command: occlum run.</span> Instead of spending months to port your code to SGX, Occlum turns on your applications now!</p>
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
  .inner {
    padding: 80px 0 80px 0;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    align-items: flex-end;
    @media (--mobile) {
      padding: 40px 0 40px 0;
    }
  }
  .content {
    width: 100%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    @media (--mobile) {
      flex-direction: column;
    }
    .diagram {
      max-width: 550px;
      @media (--table) {
        max-width: 45vw;
      }
      @media (--mobile) {
        max-width: 100%;
        margin: 0 auto;
        margin-bottom: 30px;
      }
    }
  }
}
</style>
