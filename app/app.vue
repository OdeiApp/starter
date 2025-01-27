<script setup>
const { setLocale, locales, locale } = useI18n()
</script>

<template>
  <div>
    <div>
      <div class="py-4">
        <button
            v-for="_locale of locales"
            :key="_locale.code"
            class="px-4"
            @click="setLocale(_locale.code);"
        >
          {{ _locale.code }}
        </button>
      </div>
      <NuxtLoadingIndicator color="#FFF" />
      <NuxtPage />
    </div>
  </div>
</template>

<style>

</style>
