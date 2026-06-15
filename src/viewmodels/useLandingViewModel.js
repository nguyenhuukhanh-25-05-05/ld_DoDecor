import { ref } from 'vue'
import {
  navItems,
  pressItems,
  categories,
  products,
  footerColumns,
  processSteps,
  testimonials,
  galleryImages,
} from '../models/landingData.js'

export function useLandingViewModel() {
  const menuOpen = ref(false)

  const data = {
    navItems,
    pressItems,
    categories,
    products,
    footerColumns,
    processSteps,
    testimonials,
    galleryImages,
  }

  function toggleMenu() {
    menuOpen.value = !menuOpen.value
  }

  return {
    data,
    menuOpen,
    toggleMenu,
  }
}
