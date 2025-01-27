<script setup>
import {useSwitchLocalePath} from "#i18n";

const { setLocale, locales, locale } = useI18n()
prerenderRoutes(['/', '/en', '/fr', '/fa']);
const switchLocalePath = useSwitchLocalePath()
</script>

<template>
  <div>
    <div>
      <div class="py-4">
        <button
            v-for="_locale of locales"
            :key="_locale.code"
            class="px-4"
            @click="setLocale(_locale.code);switchLocalePath(_locale.code)"
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
