<script setup>
import HeaderNav from '../components/HeaderNav.vue'
import HeroSection from '../components/HeroSection.vue'
import PressBar from '../components/PressBar.vue'
import CategorySection from '../components/CategorySection.vue'
import ProductSection from '../components/ProductSection.vue'
import EditorialSection from '../components/EditorialSection.vue'
import ProcessSection from '../components/ProcessSection.vue'
import TestimonialSection from '../components/TestimonialSection.vue'
import GallerySection from '../components/GallerySection.vue'
import CtaBanner from '../components/CtaBanner.vue'
import FooterSection from '../components/FooterSection.vue'
</script>

<template>
  <div class="min-h-screen bg-white font-['Plus_Jakarta_Sans',sans-serif] antialiased overflow-x-hidden">
    <HeaderNav />
    <main>
      <HeroSection />
      <PressBar />
      <CategorySection />
      <ProductSection />
      <EditorialSection />
      <ProcessSection />
      <TestimonialSection />
      <GallerySection />
      <CtaBanner />
    </main>
    <FooterSection />
  </div>
</template>
