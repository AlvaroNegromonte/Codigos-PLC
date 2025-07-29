public class Buy {
    private Cart chart;

    public Buy() {
        chart = new Cart();
    }

    public void addItemToChart(Items item) {
        try {
            chart.addItem(item);
        } catch (ItemAlreadyExists e) {
            System.out.println("Error: Item already exists in the cart.");
        } catch (NotEnoughSpace e) {
            System.out.println("Error: Cart is full. Cannot add more items.");
        } catch (NullParameters e) {
            System.out.println("Error: Cannot add a null item.");
        }
    }

    public void removeItemFromChart(String name) {
        try {
            chart.removeItem(name);
        } catch (NotFound e) {
            System.out.println("Error: Item not found in the cart.");
        } catch (NullParameters e) {
            System.out.println("Error: Item name is null.");
        }
    }

    public void searchItemInChart(String name) {
        try {
            String result = chart.searchItem(name);
            System.out.println(result);
        } catch (NotFound e) {
            System.out.println("Error: Item not found in the cart.");
        } catch (NullParameters e) {
            System.out.println("Error: Item name is null.");
        }
    }

    public void displayChartItems() {
        chart.getItems();
    }
}
