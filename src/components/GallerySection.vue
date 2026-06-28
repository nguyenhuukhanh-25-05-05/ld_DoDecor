<script setup>
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
</script>

<template>
  <section class="py-20 lg:py-28 bg-white">
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16">
      <div class="text-center max-w-[600px] mx-auto mb-14">
        <h2 class="text-[32px] sm:text-[42px] font-bold leading-[1.15] tracking-[-0.02em] text-[#111111]">
          Cảm hứng dự án
        </h2>
        <p class="text-[16px] leading-[1.65] text-[#666666] mt-4">
          Những không gian đã được kiến tạo.
        </p>
      </div>

      <div class="grid grid-cols-2 md:grid-cols-3 gap-4 md:gap-6">
        <div
          v-for="(img, i) in data.galleryImages"
          :key="i"
           class="group relative overflow-hidden rounded-[16px] bg-[#F5F5F5]"
        >
          <div class="aspect-[4/5]">
            <img
              :src="img"
              :alt="'Project ' + (i + 1)"
              class="w-full h-full object-cover"
              loading="lazy"
            />
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
