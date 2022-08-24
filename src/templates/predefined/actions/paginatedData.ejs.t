---
to: App/Domain/Utils/PaginatedData.ts
---
import PaginationOptions from "@domain/Utils/PaginationOptions";

class PaginationData<T> {
  public paginationOptions: PaginationOptions;
  public itemCount: number;
  public items: Array<T>;

  constructor(paginationOptions: PaginationOptions, itemCount: number) {
    this.paginationOptions = paginationOptions;
    this.itemCount = itemCount;
    this.items = [];
  }


  totalPages(): number {
    return Math.ceil(this.itemCount / this.paginationOptions.limit());
  }

  addItem(item: T): void {
    this.items.push(item);
  }

  hasNext(): boolean {
    return this.paginationOptions.getCurrentPage() < this.totalPages();
  }

  nextPage(): number {
    return this.paginationOptions.getCurrentPage() + 1;
  }

  hasPrev(): boolean {
    return this.paginationOptions.getCurrentPage() > 1;
  }

  prevPage(): number {
    return this.paginationOptions.getCurrentPage() - 1;
  }


  getPaginatedData(): any {
    const paginationInfo = {
      totalItems: this.itemCount,
      totalPages: this.totalPages(),
      currentPage: this.paginationOptions.getCurrentPage(),
      perPage: this.paginationOptions.limit(),
      nextPage: 0,
      prevPage: 0
    };

    if (this.hasNext()) {
      paginationInfo.nextPage = this.nextPage();
    }

    if (this.hasPrev()) {
      paginationInfo.prevPage = this.prevPage();
    }

    return {
      status: "success",
      paginationInfo,
      data: this.items,
    };
  }
}

export default PaginationData;
