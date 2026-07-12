<script setup>
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
</script>

<template>
  <div class="flex items-center justify-center gap-6 md:gap-12 py-8 px-6 text-[11px] font-bold uppercase tracking-[0.15em] text-[#111111]/40 select-none">
    <span v-for="item in data.pressItems" :key="item" class="cursor-pointer">{{ item }}</span>
  </div>
</template>
