<script setup>
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
</script>

<template>
  <section class="py-20 lg:py-28 bg-white">
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16">
      <div class="text-center max-w-[500px] mx-auto mb-16">
        <h2 class="text-[32px] sm:text-[42px] font-bold leading-[1.15] tracking-[-0.02em] text-[#111111]">
          Cách chúng tôi làm việc
        </h2>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-12 md:gap-16">
        <div v-for="(step, i) in data.processSteps" :key="step.number" class="text-center">
          <span class="text-[56px] font-bold text-[#111111]/8 leading-none select-none block mb-4">{{ step.number }}</span>
          <h3 class="text-[18px] font-bold text-[#111111] mb-2">{{ step.title }}</h3>
          <p class="text-[14px] text-[#666666] leading-relaxed max-w-[300px] mx-auto">{{ step.desc }}</p>
        </div>
      </div>
    </div>
  </section>
</template>
