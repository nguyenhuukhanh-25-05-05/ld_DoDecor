<script setup>
import { ArrowRight } from '@lucide/vue'
</script>

<template>
  <section class="relative w-full min-h-[90vh] flex items-center justify-center overflow-hidden bg-[#333333] pt-[72px]">
    <img
      src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?q=80&w=1600&auto=format"
      alt=""
      class="absolute inset-0 w-full h-full object-cover"
      loading="eager"
    />
    <div class="absolute inset-0 bg-black/45"></div>

    <div class="relative z-10 text-center px-6 py-32 max-w-[800px]">
      <h1 class="text-[40px] sm:text-[56px] lg:text-[72px] font-bold leading-[1.08] tracking-[-0.03em] text-white mb-6">
        Nghệ thuật trang trí không gian sống
      </h1>
      <p class="text-[16px] sm:text-[18px] text-white/75 max-w-[480px] mx-auto mb-10 leading-relaxed">
        Tuyển tập nội thất & decor tối giản, thủ công và bền vững.
      </p>
      <a
        href="#"
        class="inline-flex items-center gap-2.5 h-[52px] px-9 rounded-full bg-white text-[#111111] font-semibold text-[15px] shadow-lg"
      >
        Khám phá bộ sưu tập
        <ArrowRight :size="18" :stroke-width="2" />
      </a>
    </div>
  </section>
</template>
