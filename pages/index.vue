<template>
  <div>
    <index />
    <why />
    <how />
    <feature />
    <case />
  </div>
</template>

<script>
import Index from '~/components/index/index.vue'
import Why from '~/components/index/why.vue'
import How from '~/components/index/how.vue'
import Feature from '~/components/index/feature.vue'
import Case from '~/components/index/case.vue'

export default {
  components: {
    Index,
    Why,
    How,
    Feature,
    Case,
  }
}
</script>

<style scoped lang="postcss">
</style>
