<script setup>
import { ArrowRight } from '@lucide/vue'
</script>

<template>
  <section class="py-20 lg:py-28 bg-white">
    <div class="max-w-[600px] mx-auto px-6 text-center">
      <h2 class="text-[28px] sm:text-[36px] font-bold text-[#111111] leading-[1.15] mb-4">
        Sẵn sàng biến không gian của bạn thành tác phẩm nghệ thuật?
      </h2>
      <p class="text-[15px] text-[#666666] mb-8">Đặt lịch tư vấn miễn phí ngay hôm nay.</p>
      <a
        href="#"
        class="inline-flex items-center gap-2 h-[52px] px-8 rounded-full bg-[#111111] text-white font-semibold text-[15px] shadow-md"
      >
        Nhận tư vấn <ArrowRight :size="18" :stroke-width="2" />
      </a>
    </div>
  </section>
</template>
