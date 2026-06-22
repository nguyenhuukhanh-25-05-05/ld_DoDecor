<script setup>
import { Heart, ShoppingCart, ArrowRight } from '@lucide/vue'
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
</script>

<template>
  <section class="pb-20 lg:pb-28 bg-white">
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16">
      <div class="flex flex-col sm:flex-row sm:items-end justify-between mb-12">
        <h2 class="text-[32px] sm:text-[42px] font-bold leading-[1.15] tracking-[-0.02em] text-[#111111]">
          Sản phẩm được yêu thích
        </h2>
        <a href="#" class="text-[15px] font-bold text-[#111111] hover:underline inline-flex items-center gap-1 mt-2 sm:mt-0">
          Xem toàn bộ <ArrowRight :size="16" :stroke-width="2" />
        </a>
      </div>

      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
        <div v-for="product in data.products" :key="product.name" class="group flex flex-col cursor-pointer">
          <div class="relative w-full aspect-[4/5] rounded-[16px] bg-[#F5F5F5] overflow-hidden mb-4">
            <img
              :src="product.image"
              :alt="product.name"
              class="w-full h-full object-cover"
              loading="lazy"
            />
            <span class="absolute top-3 left-3 z-10 px-3 py-1 rounded-full bg-[#111111] text-white text-[11px] font-bold uppercase tracking-wider">{{ product.badge }}</span>
            <button class="absolute top-3 right-3 z-10 w-9 h-9 rounded-full bg-white text-[#111111] flex items-center justify-center shadow-md">
              <Heart :size="16" :stroke-width="1.5" />
            </button>
            <button class="absolute bottom-3 left-3 right-3 h-[44px] bg-[#111111] text-white font-semibold text-[13px] rounded-full flex items-center justify-center gap-2 shadow-lg">
              <ShoppingCart :size="16" :stroke-width="2" /> Thêm vào giỏ
            </button>
          </div>
          <span class="text-[12px] text-[#666666] uppercase tracking-wider mb-1 font-medium">Decor</span>
          <h3 class="text-[17px] font-bold text-[#111111]">{{ product.name }}</h3>
          <div class="mt-1">
            <span class="text-[16px] font-extrabold text-[#111111]">{{ product.price }}</span>
            <span v-if="product.oldPrice" class="text-[14px] text-[#666666] line-through ml-2 font-normal">{{ product.oldPrice }}</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
