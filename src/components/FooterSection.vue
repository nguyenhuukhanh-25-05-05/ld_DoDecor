<script setup>
import { useLandingViewModel } from '../viewmodels/useLandingViewModel.js'

const { data } = useLandingViewModel()
</script>

<template>
  <footer class="bg-white pt-24 pb-12 mt-20">
    <!-- Brand bar: tên to + tagline ngắn, chia 2 bên -->
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16 flex flex-col sm:flex-row items-start sm:items-end justify-between gap-2 pb-8">
      <a href="#" class="text-[28px] sm:text-[36px] font-extrabold tracking-[-0.04em] text-[#111111] select-none leading-none">
        YOU BRAND
      </a>
      <span class="text-[13px] text-[#666666] tracking-wide">Nội thất & decor tối giản · est. 2026</span>
    </div>

    <!-- Divider line đậm, như kiểu tạp chí -->
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16">
      <div class="w-full h-px bg-[#111111]/10"></div>
    </div>

    <!-- Links: 3 cột gọn, không footer column dài dòng -->
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16 py-10 grid grid-cols-2 md:grid-cols-3 gap-8 text-[13px] text-[#666666]">
      <div v-for="col in data.footerColumns" :key="col.title">
        <h4 class="text-[#111111] font-bold text-[12px] uppercase tracking-[0.12em] mb-4">{{ col.title }}</h4>
        <ul class="space-y-2.5">
          <li v-for="link in col.links" :key="link">
            <a href="#" class="">{{ link }}</a>
          </li>
        </ul>
      </div>
    </div>

    <!-- Divider -->
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16">
      <div class="w-full h-px bg-[#111111]/10"></div>
    </div>

    <!-- Bottom bar: chỉ copyright + social handle, gọn 1 dòng -->
    <div class="max-w-[1440px] mx-auto px-6 lg:px-16 pt-6 flex flex-col sm:flex-row items-center justify-between text-[12px] text-[#999999]">
      <span>© 2026 YOU BRAND</span>
      <div class="flex items-center gap-5 mt-3 sm:mt-0">
        <a href="#">Instagram</a>
        <a href="#">Pinterest</a>
        <a href="#">Facebook</a>
      </div>
    </div>
  </footer>
</template>
