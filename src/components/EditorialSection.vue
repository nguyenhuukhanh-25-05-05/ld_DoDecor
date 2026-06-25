<script setup>
import { ArrowRight } from '@lucide/vue'
</script>

<template>
  <section class="w-full bg-[#F5F5F5]">
    <div class="grid grid-cols-1 lg:grid-cols-2 min-h-[500px]">
      <div class="h-[400px] lg:h-auto overflow-hidden">
        <img
          src="https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?q=80&w=1200&auto=format&fit=crop"
          alt="Minimalist interior"
          class="w-full h-full object-cover"
          loading="lazy"
        />
      </div>
      <div class="flex flex-col justify-center px-8 lg:px-16 py-16">
        <span class="text-[11px] font-bold uppercase tracking-[0.2em] text-[#111111] mb-4">Triết lý thẩm mỹ</span>
        <h2 class="text-[32px] sm:text-[40px] font-bold text-[#111111] leading-[1.15] mb-6">
          Mỗi món đồ decor là một câu chuyện về sự bình yên.
        </h2>
        <p class="text-[15px] text-[#666666] mb-8 leading-relaxed max-w-[480px]">
          Chúng tôi chọn lọc từ chất liệu tự nhiên: gỗ sồi bền bỉ, gốm sứ mộc mạc và vải linen êm ái — mang tinh thần tối giản nhưng đầy ấm cúng.
        </p>
        <a href="#" class="inline-flex items-center gap-2 text-[14px] font-bold text-[#111111]">
          Tìm hiểu thêm <ArrowRight :size="16" :stroke-width="2" />
        </a>
      </div>
    </div>
  </section>
</template>
