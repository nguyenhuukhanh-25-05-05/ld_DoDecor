<script setup>
import { Menu, X, Search, Heart, ShoppingBag } from '@lucide/vue'
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data, menuOpen, toggleMenu } = useLandingViewModel()
</script>

<template>
  <header class="fixed top-0 left-0 right-0 z-50 bg-white border-b border-[#111111]/5">
    <div class="max-w-[1440px] mx-auto px-5 md:px-10 lg:px-16 h-[72px] flex items-center justify-between">
      <a href="#" class="text-[22px] font-extrabold tracking-[-0.03em] text-[#111111] select-none leading-none">
        YOU BRAND
      </a>

      <nav class="hidden lg:flex items-center gap-8 text-[14px] font-medium text-[#666666]">
        <a
          v-for="item in data.navItems"
          :key="item.label"
          :href="item.href"
          class=""
        >
          {{ item.label }}
        </a>
      </nav>

      <div class="hidden lg:flex items-center gap-5">
        <button class="p-1.5 -m-1.5"><Search :size="20" :stroke-width="1.5" /></button>
        <button class="p-1.5 -m-1.5"><Heart :size="20" :stroke-width="1.5" /></button>
        <button class="relative p-1.5 -m-1.5">
          <ShoppingBag :size="20" :stroke-width="1.5" />
          <span class="absolute top-0 -right-0.5 w-[18px] h-[18px] bg-[#111111] text-white text-[10px] font-bold rounded-full flex items-center justify-center">3</span>
        </button>
      </div>

      <button @click="toggleMenu" class="lg:hidden relative z-50 p-2 -mr-2">
        <Menu v-if="!menuOpen" :size="24" :stroke-width="1.5" />
        <X v-else :size="24" :stroke-width="1.5" />
      </button>
    </div>

    <div
      v-show="menuOpen"
      class="lg:hidden fixed inset-0 z-40 bg-white flex flex-col items-center justify-center px-6"
    >
      <nav class="flex flex-col items-center gap-8">
        <a
          v-for="item in ['Trang chủ', 'Bộ sưu tập', 'Câu chuyện', 'Liên hệ']"
          :key="item"
          href="#"
          class="text-[28px] sm:text-[40px] font-bold text-[#111111] tracking-[-0.02em]"
          @click="menuOpen = false"
        >
          {{ item }}
        </a>
      </nav>
    </div>
  </header>
</template>
