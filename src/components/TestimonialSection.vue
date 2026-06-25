<script setup>
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
const t = data.testimonials[0]
</script>

<template>
  <section class="py-24 lg:py-32 bg-white">
    <div class="max-w-[680px] mx-auto px-6 text-center">
      <div class="w-12 h-12 rounded-full bg-[#F5F5F5] text-[#111111] text-[18px] font-bold flex items-center justify-center mx-auto mb-6 select-none">
        {{ t.name.charAt(0) }}
      </div>
      <p class="text-[22px] sm:text-[28px] font-medium text-[#111111] leading-[1.3] tracking-[-0.01em] mb-6">
        "{{ t.quote }}"
      </p>
      <p class="text-[14px] text-[#666666]">{{ t.name }} <span class="text-[#999999]">· {{ t.role }}</span></p>
    </div>
  </section>
</template>
