<script setup>
import { ArrowRight } from '@lucide/vue'
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
</script>

<template>
  <section class="py-20 lg:py-28 bg-white">
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16">
      <div class="text-center max-w-[600px] mx-auto mb-14">
        <h2 class="text-[32px] sm:text-[42px] font-bold leading-[1.15] tracking-[-0.02em] text-[#111111]">
          Danh mục nổi bật
        </h2>
        <p class="text-[16px] leading-[1.65] text-[#666666] mt-4">
          Từ nội thất lớn đến chi tiết trang trí nhỏ.
        </p>
      </div>

      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
        <a
          v-for="cat in data.categories"
          :key="cat.title"
          href="#"
           class="group relative h-[360px] rounded-[20px] overflow-hidden cursor-pointer bg-[#F5F5F5] block"
        >
          <img
            :src="cat.image"
            :alt="cat.title"
            class="w-full h-full object-cover"
            loading="lazy"
          />
          <div class="absolute inset-0 bg-gradient-to-t from-black/50 via-transparent to-transparent flex flex-col justify-end p-6 text-white">
            <h3 class="text-[20px] font-bold mb-1">{{ cat.title }}</h3>
            <span class="text-[13px] text-white/80 flex items-center gap-1">
              Xem sản phẩm <ArrowRight :size="14" :stroke-width="2" />
            </span>
          </div>
        </a>
      </div>
    </div>
  </section>
</template>
